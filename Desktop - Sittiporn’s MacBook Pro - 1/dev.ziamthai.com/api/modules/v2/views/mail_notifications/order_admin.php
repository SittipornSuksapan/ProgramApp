
<!--//--- Header---->
<div style="width:100%;">
    <div style="float:left;width:48%;">

        <div>
            <strong>Customer</strong>
            <div style="margin-bottom:10px;font-size:0.9em;"><?php echo $order_data['order_name']; ?></div>
        </div>

        <div>
            <strong>Address</strong>
            <div style="margin-bottom:10px;font-size:0.9em;">
                <?php echo $order_data['order_address']; ?>
                <span>
                    <?php echo $order_data['order_zipcode']; ?>
                </span>
            </div>
        </div>

        <div>
            <strong>Tel.</strong>
            <div style="margin-bottom:10px;font-size:0.9em;"><?php echo $order_data['order_tel']; ?></div>
        </div>

        <div>
            <strong>E-Mail.</strong>
            <div style="margin-bottom:10px;font-size:0.9em;"><?php echo $order_data['order_email']; ?></div>
        </div>

    </div>
    <div style="float:right;width:48%;">
        <div>
            <strong>Order No</strong>
            <div style="margin-bottom:10px;font-size:0.9em;">#<?php echo $order_data['order_id']; ?></div>
        </div>

        <div>
            <strong>Order Date</strong>
            <div style="margin-bottom:10px;font-size:0.9em;"><?php echo $order_data['order_date']; ?></div>
        </div>

        <div>
            <strong>Order Type</strong>
            <div style="margin-bottom:10px;font-size:0.9em;"><?php echo ucfirst($order_data['order_delivery_type']); ?></div>
        </div>
    </div>
    <br style="clear:both;">
</div>


<table style="margin:20px auto;width:100%;">

    <thead>
        <tr>
            <th style="padding:10px;border-bottom: double 2px #aaa;min-width:60px !important;max-width:60px !important;text-align:center;">Qty</th>
            <th style="padding:10px;border-bottom: double 2px #aaa;min-width:140px;max-width:140px;" align="left">
                <span>Items</span>
            </th>
            <th style="padding:10px;border-bottom: double 2px #aaa;min-width:60px !important;max-width:60px !important;text-align:center;">Price</th>
            <th style="padding:10px;border-bottom: double 2px #aaa;min-width:60px !important;max-width:60px !important;text-align:center;">Total</th>
        </tr>
    </thead>

    <tbody>
        <?php
        $sum_total = 0;
        if (sizeof($order_list)) {
            foreach ($order_list as $list) {
                $sum_total = $sum_total + $list['list_total'];
                ?>
                <tr>

                    <td valign="top" style="padding:10px;border-bottom: dotted 1px #ccc;text-align: center;"><?php echo $list['list_qty']; ?></td>
                    <td style="padding:10px;border-bottom: dotted 1px #ccc;">
                        <?php
                        echo $list['list_detail'];

                        if (!empty($list['list_instruction'])) {
                            echo '<div style="padding:5px 0px;font-size:0.9em;"><label style="color:#00b;">Instruction:</label>&nbsp;' . $list['list_instruction'] . '</div>';
                        }
                        ?>
                    </td>
                    <td valign="top" style="padding:10px;border-bottom: dotted 1px #ccc;text-align: right;"><?php echo $list['list_price']; ?></td>
                    <td valign="top" style="padding:10px;border-bottom: dotted 1px #ccc;text-align: right;"><?php echo $list['list_total']; ?></td>

                </tr>
                <?php
            }
        }
        $grand_total = $sum_total + $order_data['order_delivery_charge'];
        ?>
    </tbody>

    <tfoot style="text-align:right;font-weight:bold;">
        <tr>
            <td colspan="2" style="padding-top:20px;">
                Subtotal
            </td>
            <td colspan="2" style="padding-top:20px;padding-right:10px;">
                <span>$</span>
                <span id="store_order_table_subtotal"><?php echo $sum_total; ?></span>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                Delivery Charge
            </td>
            <td colspan="2" style="padding-right:10px;">
                <span>$</span>
                <span id="store_order_table_delivery"><?php echo $order_data['order_delivery_charge']; ?></span>
            </td>
        </tr>
        <tr style="font-size:1.2em;">
            <td colspan="2">
                Total
            </td>
            <td colspan="2" style="padding-right:10px;">
                <span>$</span>
                <span id="store_order_table_total"><?php echo $grand_total; ?></span>
            </td>
        </tr>
    </tfoot>

</table>
