<?php echo $header; ?>
<div id="container"><?php echo $menu; ?>
  <div id="content">
    <div class="container">
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
      <?php if ($error_warning) { ?>
      <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
        <button type="button" class="close" data-dismiss="alert">&times;</button>
      </div>
      <?php } ?>
      <div class="panel panel-default">
        <div class="panel-heading">
          <div class="pull-right">
            <button type="submit" form="form-reward" class="btn btn-success"><i class="fa fa-check-circle"></i> <?php echo $button_save; ?></button>
            <a href="<?php echo $cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i> <?php echo $button_cancel; ?></a></div>
          <h1 class="panel-title"><i class="fa fa-pencil-square fa-lg"></i> <?php echo $heading_title; ?></h1>
        </div>
        <div class="panel-body">
          <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-reward" class="form-horizontal">
            <div class="form-group">
              <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
              <div class="col-sm-10">
                <select name="reward_status" id="input-status" class="form-control">
                  <?php if ($reward_status) { ?>
                  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                  <option value="0"><?php echo $text_disabled; ?></option>
                  <?php } else { ?>
                  <option value="1"><?php echo $text_enabled; ?></option>
                  <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                  <?php } ?>
                </select>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label" for="input-sort-order"><?php echo $entry_sort_order; ?></label>
              <div class="col-sm-10">
                <input type="text" name="reward_sort_order" value="<?php echo $reward_sort_order; ?>" placeholder="<?php echo $entry_sort_order; ?>" id="input-sort-order" class="form-control" />
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>