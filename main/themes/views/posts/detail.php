<h2><?php echo $post['title']; ?></h2>
<small class="post-date">Posted on: <?php echo $post['created_at'] ?></small><br/>
<div class="post-body">
    <p><?php echo $post['body'] ?></p>
</div>
<hr/>

<?php echo form_open('/posts/delete/'.$post['id']); ?>

    <a class="btn btn-info" href="<?php echo site_url('/posts'); ?>">Go Back</a>
    <a class="btn btn-warning" href="edit/<?php echo $post['slug']; ?>">Edit</a>

    <input type="submit" value="Delete" class="btn btn-danger pull-left"/>
</form>