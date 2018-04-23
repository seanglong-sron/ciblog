<h2><?= $title; ?></h2>

<?php echo validation_errors(); ?>

<?php echo form_open('posts/edit'); ?>
<div class="form-group">
    <label>Title</label>
    <input type="text" class="form-control" name="title" placeholder="Add Title" value="<?php echo $post['title']; ?>">
</div>
<div class="form-group">
    <label>Body</label>
    <textarea class="form-control" name="body" placeholder="Add Body"><?php echo $post['body']; ?></textarea>
</div>
<button type="submit" class="btn btn-warning">Edit</button>