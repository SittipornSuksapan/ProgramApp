<div style="width:100%;">

    <div style="float:left;width:48%;">

        <div>
            <strong>Customer</strong>
            <div style="margin-bottom:10px;font-size:0.9em;">{{order.customer_name}}</div>
        </div>

        <div>
            <strong>Address</strong>
            <div style="margin-bottom:10px;font-size:0.9em;">
                {{#order.customer_address_full}}
                {{order.customer_address_full}}
                {{/order.customer_address_full}}

                {{^order.customer_address_full}}
                {{#order.customer_street}}

                {{order.customer_street}}
                {{order.customer_address}}
                {{order.customer_city}}
                <span>,</span>
                {{order.customer_state}}
                {{order.customer_zipcode}}
                {{/order.customer_street}}
                {{/order.customer_address_full}}
            </div>
        </div>

        {{#order.customer_tel}}
        <div>
            <strong>Tel.</strong>
            <div style="margin-bottom:10px;font-size:0.9em;">{{order.customer_tel}}</div>
        </div>
        {{/order.customer_tel}}

        {{#order.customer_email}}
        <div>
            <strong>E-Mail.</strong>
            <div style="margin-bottom:10px;font-size:0.9em;">{{order.customer_email}}</div>
        </div>
        {{/order.customer_email}}

    </div>

    <div style="float:right;width:48%;">

        <div>
            <div style="margin-bottom:10px;font-size:1.2em;font-weight:bold;padding:10px;border:solid 1px #f60;background:#ffccaa;color:#f00;text-align:center;border-radius:6px;">
                {{order.order_delivery_type}}
            </div>
        </div>

        <div>
            <strong>Order No :</strong>
            <div style="display:inline-block;">#{{order.order_id}}</div>
        </div>

        <div>
            <strong>Order Date :</strong>
            <div style="display:inline-block;font-size:0.9em;">{{order.order_date}}</div>
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
        {{#items}}
        <tr>

            <td valign="top" style="padding:10px;border-bottom: dotted 1px #ccc;text-align: center;">{{qty}}</td>
            <td style="padding:10px;border-bottom: dotted 1px #ccc;">
                {{name}}
                {{#instruction}}
                <div style="padding:5px 0px;font-size:0.9em;">
                    <label style="color:#00b;">Instruction:</label>
                    {{instruction}}
                </div>
                {{/instruction}}
            </td>
            <td valign="top" style="padding:10px;border-bottom: dotted 1px #ccc;text-align: right;">{{price}}</td>
            <td valign="top" style="padding:10px;border-bottom: dotted 1px #ccc;text-align: right;">{{total}}</td>

        </tr>
        {{/items}}

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
                <span id="store_order_table_subtotal">{{order.order_sub_total}}</span>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                Delivery Charge
            </td>
            <td colspan="2" style="padding-right:10px;">
                <span>$</span>
                <span id="store_order_table_delivery">{{order.order_delivery_charge}}</span>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                TAX
                <span style="font-size:0.8em;">({{order.order_tax_rate}}%)</span>
            </td>
            <td colspan="2" style="padding-right:10px;">
                <span>$</span>
                <span id="store_order_table_total">{{order.order_tax_amount}}</span>
            </td>
        </tr>
        <tr style="font-size:1.2em;">
            <td colspan="2"style="">
                Total
            </td>
            <td colspan="2" style="border-top:solid 1px #000;border-bottom:solid 1px #000;padding-right:10px;">
                <span>$</span>
                <span id="store_order_table_total">{{order.order_grand_total}}</span>
            </td>
        </tr>
    </tfoot>

</table>