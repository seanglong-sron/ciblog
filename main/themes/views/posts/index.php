<h2><?= $title ?></h2>
<?php foreach($posts as $post): ?>
    <h3><?php echo $post['title'] ?></h3>
    <small class="post-date">Posted on: <?php echo $post['created_at'] ?></small>
    <p><?php echo $post['body'] ?></p>
    <a class="btn btn-info" href="<?php echo site_url('/posts/'.$post['slug']); ?>">Read More</a>
<?php endforeach; ?>