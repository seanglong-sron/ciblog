<?php
    class Posts extends CI_Controller{
        public function index(){
            $data['title']='Latest Post';
            $data['posts']=$this->Post_model->get_posts();

            $this->load->view('../themes/views/header.php');
            $this->load->view('../themes/views/posts/index', $data);
            $this->load->view('../themes/views/footer.php');
        }

        public function detail($slug=NULL){
            $data['post']=$this->Post_model->get_posts($slug);

            if(empty($data['post'])){
                show_404();
            }

            $data['title']=$data['post']['title'];

            $this->load->view('../themes/views/header.php');
            $this->load->view('../themes/views/posts/detail', $data);
            $this->load->view('../themes/views/footer.php');
        }

        public function create(){
            $data['title']='Create Post';
            $data['categories']=$this->Post_model->get_categories();
 
            $this->form_validation->set_rules('title','Title','required');
            $this->form_validation->set_rules('body','Body','required');

            if($this->form_validation->run()===FALSE){
                $this->load->view('../themes/views/header.php');
                $this->load->view('../themes/views/posts/create', $data);
                $this->load->view('../themes/views/footer.php');
            }
            else{
                //Upload Image
                $config['upload_path']='./assets/images/posts';
                $config['allowed_types']='gif|jpg|png';
                $config['max_size']='2048';
                $config['max_width']='500';
                $config['max_height']='500';

                $this->load->library('upload',$config);

                if(!$this->upload->do_upload()){
                    $error=array('error'=>$this->upload->display_errors());
                    $post_image='noimage.png';
                }
                else{
                    $data=array('upload_data'=>$this->upload->data());
                    $post_image=$_FILES['userfile']['name'];
                }
                
                $this->Post_model->create_post($post_image);
                redirect('posts');
            }
        }

        public function delete($id){
            $this->Post_model->delete_post($id);
            redirect('posts');
        }

        public function edit($slug){
            $data['post']=$this->Post_model->get_posts($slug);
            $data['categories']=$this->Post_model->get_categories();

            if(empty($data['post'])){
                show_404();
            }

            $data['title']='Edit Post';

            $this->load->view('../themes/views/header.php');
            $this->load->view('../themes/views/posts/edit', $data);
            $this->load->view('../themes/views/footer.php');


        }

        public function update(){
            $this->Post_model->update_post();
            redirect('posts');
        }
    }
?>