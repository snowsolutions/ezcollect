requirejs.config({
    baseUrl: '/assets',
    paths: {
        jquery: 'lib/jquery/jquery-3.6.1.min',
        materialize: 'lib/materialize/materialize.min',
        filepond: 'lib/filepond/filepond.min',
        'filepond/jquery': 'lib/filepond/filepond.jquery',
        'filepond/pdf-review': 'lib/filepond/filepond-plugin-pdf-preview.min',
        'filepond/type-validate': 'lib/filepond/filepond-plugin-file-validate-type',
        dataTable: 'lib/datatable/datatables.min',
        ckeditor: 'lib/ckeditor/ckeditor',
        'form/util': 'custom/form/util',
        'table/util': 'custom/table/table-util',
    }
});