<?php

namespace App\Http\Controllers;

use App\Models\IntroductionMaterial;
use App\Models\Terminology;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    public function display_existing()
    {
        $instroduction_materials = IntroductionMaterial::where('is_verified', 1)->get();
        $terminologies = Terminology::where('is_verified', 1)->get();
        return view("display_existing", [
            'introduction_materials' => $instroduction_materials,
            'terminologies' => $terminologies
        ]);
    }
    public function add_comment($style)
    {
        $comments = array();
        if ($style == 'IM') {
            $comments = IntroductionMaterial::where('is_verified', 1)->get();
        }
        if ($style == 'TE') {
            $comments = Terminology::where('is_verified', 1)->get();
        }
        return view("add_comment", [
            'existing_comments' => $comments,
            'style' => $style
        ]);
    }
    public function save_comment(Request $req, $style)
    {
        $validated = $req->validate([
            'comment' => 'required',
            'firstname' => 'required',
            'surname' => 'required',
            'email' => 'required',
            'tone' => 'required'
        ]);
        if ($validated) {
            $comment = $req->input('comment');
            $firstname = $req->input('firstname');
            $surname = $req->input('surname');
            $email = $req->input('email');
            $tone = $req->input('tone');
            if ($style == 'IM') {
                $introduction_material = new IntroductionMaterial();
                $introduction_material->comment_name = $comment;
                $introduction_material->comment_tone = $tone;
                $introduction_material->is_verified = 0;
                $introduction_material->firstname = $firstname;
                $introduction_material->surname = $surname;
                $introduction_material->email = $email;
                $introduction_material->save();
                $comment = IntroductionMaterial::where('comments_id', $introduction_material->id)->first();
                return view("confirmation_message", [
                    'comment' => $comment
                ]);
            }
            if ($style == 'TE') {
                $terminology = new Terminology();
                $terminology->comment_name = $comment;
                $terminology->comment_tone = $tone;
                $terminology->is_verified = 0;
                $terminology->firstname = $firstname;
                $terminology->surname = $surname;
                $terminology->email = $email;
                $terminology->save();
                $comment = Terminology::where('comments_id', $terminology->id)->first();
                return view("confirmation_message", [
                    'comment' => $comment
                ]);
            }
            return redirect()->back();
        }
        return redirect()->back();
    }
    public function final_set_for_students(Request $req)
    {
        $comment = $req->input('selectedcomments');
        return view("final_set_for_students", [
            'comment' => $comment
        ]);
    }
    public function verify_comment_page()
    {
        $instroduction_materials = IntroductionMaterial::where('is_verified', 0)->get();
        $terminologies = Terminology::where('is_verified', 0)->get();
        return view("unverified_comments", [
            'introduction_materials' => $instroduction_materials,
            'terminologies' => $terminologies
        ]);
    }
    public function verify_comment(Request $req, $style, $id)
    {
        $comment = $req->post('comment_name');
        $verification_status = $req->post('verified_status');
        $tone = $req->post('tone');
        if ($style == 'TE') {
            Terminology::where('comments_id', $id)->update([
                'comment_name' => $comment,
                'is_verified' => $verification_status,
                'comment_tone' => $tone,
            ]);
        }
        if ($style == 'IM') {
            IntroductionMaterial::where('comments_id', $id)->update([
                'comment_name' => $comment,
                'is_verified' => $verification_status,
                'comment_tone' => $tone,
            ]);
        }
        return response()->json();
    }
    public function get_unverified_comments(Request $req)
    {
        $instroduction_materials = IntroductionMaterial::where('is_verified', 0)->get();
        $terminologies = Terminology::where('is_verified', 0)->get();
        return response()->json([
            'introduction_materials' => $instroduction_materials,
            'terminologies' => $terminologies
        ]);
    }
    public function modify_or_delete_page()
    {
        $instroduction_materials = IntroductionMaterial::get();
        $terminologies = Terminology::get();
        return view("delete_or_modify_comments", [
            'introduction_materials' => $instroduction_materials,
            'terminologies' => $terminologies
        ]);
    }
    public function modify_comment(Request $req, $style, $id)
    {
        $comment_name = $req->post('comment');
        $firstname = $req->post('firstname');
        $surname = $req->post('surname');
        $email = $req->post('email');
        $comment_tone = $req->post('comment_tone');
        $verification_status = $req->post('verification_status');
        if ($style == 'TE') {
            Terminology::where('comments_id', $id)->update([
                'comment_name' => $comment_name,
                'firstname' => $firstname,
                'surname' => $surname,
                'email' => $email,
                'comment_tone' => $comment_tone,
                'is_verified' => $verification_status
            ]);
        }
        if ($style == 'IM') {
            IntroductionMaterial::where('comments_id', $id)->update([
                'comment_name' => $comment_name,
                'firstname' => $firstname,
                'surname' => $surname,
                'email' => $email,
                'comment_tone' => $comment_tone,
                'is_verified' => $verification_status
            ]);
        }
        return response()->json();
    }
    public function getComments(Request $req)
    {
        $instroduction_materials = IntroductionMaterial::get();
        $terminologies = Terminology::get();
        $data = [
            'introduction_materials' => $instroduction_materials,
            'terminologies' => $terminologies
        ];
        return response()->json($data);
    }
    public function delete_comment(Request $req, $style, $id)
    {
        if ($style == 'TE') {
            $terminology = Terminology::where('comments_id', $id);
            $terminology->delete();
        }
        if ($style == 'IM') {
            $introduction_material = IntroductionMaterial::where('comments_id', $id);
            $introduction_material->delete();
        }
        return response()->json($id);
    }
}
