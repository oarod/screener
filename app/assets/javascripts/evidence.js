$(document).ready(function () {
    $('#evidence-filter').on("ajax:success", function (e, data, stat, xhr) {
        $('#evidence tbody').replaceWith(data);
    })
})
