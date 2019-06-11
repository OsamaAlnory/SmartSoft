

function showError(msg) {
    swal({
        type: 'error',
        title: 'Fel',
        text: msg
    });
}

function showSuccess(msg) {
    swal({
        type: 'success',
        title: 'Info',
        text: msg
    });
}
