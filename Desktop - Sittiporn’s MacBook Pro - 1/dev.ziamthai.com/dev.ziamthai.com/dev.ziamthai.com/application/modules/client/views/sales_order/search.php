
<link href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
<script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js" type="text/javascript"></script>

<script src="<?php echo asset_url('zth-client/js/sales_order/search.js?_=' . TIME_NOW); ?>" type="text/javascript"></script>

<h1 style="padding:15px;">
    <?php echo $this->lang->line('page_title'); ?>
</h1>

<table id="so_datatable" class="display" cellspacing="0" width="100%">
    <thead>
        <tr>
            <th>Type</th>
            <th>Total</th>
            <th>Customer</th>
            <th>Address</th>
            <th>Date</th>
        </tr>
    </thead>
    <tfoot>
        <tr>
            <th>Type</th>
            <th>Total</th>
            <th>Customer</th>
            <th>Address</th>
            <th>Date</th>
        </tr>
    </tfoot>
</table>


<!-- Modal -->
<div class="modal fade" id="modal_so_view" tabindex="-1" role="dialog" aria-hidden="true" data-order="0">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header" style="position:relative;">
                <h5 class="modal-title">Order #<span></span></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="position:absolute;top:16px;right:16px;">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body" style="overflow:auto;"></div>
        </div>
    </div>
</div>

<script id="template_so_view" type="code">
    <?php include 'order_view_template.php'; ?>
</script>
