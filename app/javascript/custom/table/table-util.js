define(['jquery', 'dataTable'], function ($) {
    return {
        init: function (table) {
            table.DataTable({
                "searching": false,
                "lengthChange": false
            });
        }
    }
})