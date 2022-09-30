define(['jquery', 'ckeditor', 'materialize'], function ($, ClassicEditor) {
    return {
        init: function (formSelector) {
            const form = $(formSelector)
            console.log('Init form: ', form)
            $(document).on('click', '.btn.form-submit', function () {
                form.submit()
            })

            $(document).on('click', '.btn.form-model-delete', function () {
                const deleteUrl = $(this).attr('delete-url')
                window.location.href = deleteUrl
                console.log(deleteUrl)
            })

            /**
             * Init materialize components
             */
            $('select').formSelect();
            $('.datepicker').datepicker({
                format: "dd-mm-yyyy"
            });

            /**
             * Init all ckeditor field with class "ckeditor"
             */
            let ckeditorFields = form.find('.ckeditor')
            ckeditorFields.each((idx, el) => {
                ClassicEditor
                    .create(el)
                    .catch(error => {
                        console.error(error);
                    });
                console.log(el)
            })
            console.log('ckeditorFields')
            console.log(ckeditorFields)
        }
    }
})