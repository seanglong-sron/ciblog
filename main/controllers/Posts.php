<?php
    class Posts extends CI_Controller{
        public function index(){
            $data['title']='Latest Post';
            $data['posts']=$this->Post_model->get_posts();

            $this->load->view('../themes/views/header.php');
            $this->load->view('../themes/views/posts/index', $data);
            $this->load->view('../themes/views/footer.php');
        }
    }
?>