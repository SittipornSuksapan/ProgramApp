

<link href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
<script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js" type="text/javascript"></script>

<script src="<?php echo asset_url('zth-client/js/timeline/search.js?_=' . TIME_NOW); ?>" type="text/javascript"></script>

<h1 style="padding:15px;">
    <?php echo $this->lang->line('page_title'); ?>
</h1>

<table id="posts_datatable" class="display" cellspacing="0" width="100%">
    <thead>
        <tr>
            <th>Action</th>
            <th>Type</th>
            <th>Title</th>
            <th>Highlight</th>
            <th>Create Date</th>
            <th>Modify Date</th>
        </tr>
    </thead>
    <tfoot>
        <tr>
            <th>Action</th>
            <th>Type</th>
            <th>Title</th>
            <th>Highlight</th>
            <th>Create Date</th>
            <th>Modify Date</th>
        </tr>
    </tfoot>
</table>
