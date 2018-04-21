<?php
    class Pages extends CI_Controller{
        public function index($page='home'){
            if(!file_exists(APPPATH.'themes/views/pages/'.$page.'.php')){
                show_404();
            }
            $data['title']=ucfirst($page);
            $this->load->view('../themes/views/header.php');
            $this->load->view('../themes/views/pages/'.$page, $data);
            $this->load->view('../themes/views/footer.php');
        }
    }
?>