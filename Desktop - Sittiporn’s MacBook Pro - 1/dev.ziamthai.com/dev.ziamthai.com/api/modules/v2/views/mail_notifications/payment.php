<!--//--- Billing Header---->
<div style="width:100%;border-top:solid 1px #000;margin-top:15px;padding-top:15px;">

    <img src="<?php echo $shop_data['img_logo_thumb']; ?>" style="max-width:128px;width:auto;height:48px;vertical-align:top;">

    <div style="display:inline-block;vertical-align:top;margin-left:10px;">
        <h3 style="margin:0;"><?php echo $shop_data['title']; ?></h3>
        <?php if (!empty($shop_data['address'])) { ?>
            <div>
                <?php echo $shop_data['address']; ?>
                <?php echo $shop_data['zipcode']; ?>
            </div>
        <?php } ?>
        <?php if (!empty($shop_data['phone'])) { ?>
            <div>
                <strong>Tel.</strong>
                <span style="display:inline-block;font-size:0.9em;"><?php echo $shop_data['phone']; ?></span>
            </div>
        <?php } ?>
    </div>

    <br style="clear:both;">
</div>

<!--//--- Billing Detail---->
<div style="width:100%;border-top:solid 1px #000;margin-top:15px;padding-top:15px;">

    <div style="float:left;width:48%;">

        <div>
            <strong>Customer</strong>
            <div style="margin-bottom:10px;font-size:0.9em;"><?php echo $order_data['order_name']; ?></div>
        </div>

        <?php if (!empty($order_data['order_address'])) { ?>
            <div>
                <strong>Address</strong>
                <div style="margin-bottom:10px;font-size:0.9em;">
                    <?php echo $order_data['order_address']; ?>
                    <span>
                        <?php echo $order_data['order_zipcode']; ?>
                    </span>
                </div>
            </div>
        <?php } ?>

        <?php if (!empty($order_data['order_tel'])) { ?>
            <div>
                <strong>Tel.</strong>
                <div style="margin-bottom:10px;font-size:0.9em;"><?php echo $order_data['order_tel']; ?></div>
            </div>
        <?php } ?>

        <?php if (!empty($order_data['order_email'])) { ?>
            <div>
                <strong>E-Mail.</strong>
                <div style="margin-bottom:10px;font-size:0.9em;"><?php echo $order_data['order_email']; ?></div>
            </div>
        <?php } ?>

    </div>

    <div style="float:right;width:48%;">

        <div>
            <div style="margin-bottom:10px;font-size:1.2em;font-weight:bold;padding:10px;border:solid 1px #f60;background:#ffccaa;color:#f00;text-align:center;border-radius:6px;">
                <?php echo ucfirst($order_data['order_delivery_type']); ?>
            </div>
        </div>

        <div>
            <strong>Order No :</strong>
            <div style="display:inline-block;">#<?php echo $order_data['order_id']; ?></div>
        </div>

        <div>
            <strong>Payment Date :</strong>
            <div style="display:inline-block;font-size:0.9em;"><?php echo $order_data['order_pay_date']; ?></div>
        </div>

    </div>

    <br style="clear:both;">
</div>


<table style="margin:20px auto;width:100%;" cellspacing="0" cellpadding="0">

    <thead>
        <tr>
            <th style="padding:10px;border-bottom: solid 1px #000;min-width:60px !important;max-width:60px !important;text-align:center;">Qty</th>
            <th style="padding:10px;border-bottom: solid 1px #000;min-width:140px;max-width:140px;" align="left">
                <span>Items</span>
            </th>
            <th style="padding:10px;border-bottom: solid 1px #000;min-width:60px !important;max-width:60px !important;text-align:center;">Price</th>
            <th style="padding:10px;border-bottom: solid 1px #000;min-width:60px !important;max-width:60px !important;text-align:center;">Total</th>
        </tr>
    </thead>

    <tbody>
        <?php
        if (sizeof($order_list)) {
            foreach ($order_list as $list) {
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
                    <td valign="top" style="padding:10px;border-bottom: dotted 1px #ccc;text-align: right;"><?php echo number_format((float) $list['list_price'], 2, '.', ''); ?></td>
                    <td valign="top" style="padding:10px;border-bottom: dotted 1px #ccc;text-align: right;"><?php echo number_format((float) $list['list_total'], 2, '.', ''); ?></td>

                </tr>
                <?php
            }
        }
        ?>

        <tr>
            <td colspan="4">
                <div style="padding:15px;text-align:center;font-weight:bold;font-size:1.2em;">
                    --- END OF ORDER ---
                </div>
            </td>
        </tr>

    </tbody>

    <tfoot style="text-align:right;font-weight:bold;">
        <tr>
            <td colspan="2" style="padding-top:20px;">
                Subtotal
            </td>
            <td colspan="2" style="padding-top:20px;padding-right:10px;">
                <span>$</span>
                <span id="store_order_table_subtotal"><?php echo number_format((float) $order_data['order_sub_total'], 2, '.', ''); ?></span>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                Delivery Charge
            </td>
            <td colspan="2" style="padding-right:10px;">
                <span>$</span>
                <span id="store_order_table_delivery"><?php echo number_format((float) $order_data['order_delivery_charge'], 2, '.', ''); ?></span>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                TAX
                <span style="font-size:0.8em;">(<?php echo $order_data['order_tax_rate']; ?>%)</span>
            </td>
            <td colspan="2" style="padding-right:10px;">
                <span>$</span>
                <span id="store_order_table_total"><?php echo number_format((float) $order_data['order_tax_amount'], 2, '.', ''); ?></span>
            </td>
        </tr>
        <tr style="font-size:1.2em;">
            <td colspan="2"style="">
                Total
            </td>
            <td colspan="2" style="border-top:solid 1px #000;border-bottom:solid 1px #000;padding-right:10px;">
                <span>$</span>
                <span id="store_order_table_total"><?php echo number_format((float) $order_data['order_grand_total'], 2, '.', ''); ?></span>
            </td>
        </tr>
    </tfoot>

</table>


