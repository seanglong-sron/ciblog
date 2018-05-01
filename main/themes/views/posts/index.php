<h2 align="center"><?= $title ?></h2>
<?php foreach($posts as $post): ?>
    <div class="row">
        <div class="col-md-3" style="text-align:center;">
            <img src="<?php echo site_url(); ?>assets/images/posts/<?php echo $post['post_image']; ?>" width="200px" style="margin-top:45px;"/>
        </div>
        <div class="col-md-9">
            <h3 align="center"><?php echo $post['title'] ?></h3>
            <small class="post-date">Posted on: <?php echo $post['created_at'] ?> in <b><?php echo $post['name']; ?></b></small>
            <p><?php echo word_limiter($post['body'],70); ?></p>
            <a class="btn btn-info" href="<?php echo site_url('/posts/'.$post['slug']); ?>">Read More</a>
        </div>
    </div>
    <br/>
<?php endforeach; ?>