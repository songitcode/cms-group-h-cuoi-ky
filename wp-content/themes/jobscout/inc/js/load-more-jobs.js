jQuery(function ($) {
    $('#load-more').click(function () {
        var button = $(this);
        var page = button.data('page');
        var nextPage = page + 1;

        var data = {
            action: 'load_more_jobs',
        page: nextPage,
            nonce: loadMoreParams.nonce
        };

        $.ajax({
            url: loadMoreParams.ajaxurl,
            data: data,
            type: 'GET',
            beforeSend: function () {
                button.text('Loading...').prop('disabled', true);
            },
            success: function (response) {
                if (response) {
                    $('#job-list-container').append(response);
                    button.data('page', nextPage).text('Load More').prop('disabled', false);
                } else {
                    button.text('No More Jobs').prop('disabled', true);
                }
            }
        });
    });
});
