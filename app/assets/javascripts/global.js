(function() {
    'use strict';

    $(function() {
        $('.message .close').on('click', function() {
            $(this).closest('.message').fadeOut();
        });
    });
})();
