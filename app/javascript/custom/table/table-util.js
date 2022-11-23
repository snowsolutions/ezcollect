define(['jquery', 'dataTable'], function ($) {
    return {
        init: function (table) {
            if (!table.hasClass('dataTable')) {
                table.dataTable({
                    "searching": false,
                    "lengthChange": false
                });
            }
        }
    }
})