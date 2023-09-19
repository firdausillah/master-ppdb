const flashData = $('.flash-data').data('flashdata');

if (flashData) {
    Swal.fire({
        icon: 'success',
        title: 'Berhasil',
        text: flashData,
    });
}


// tombol hapus
$('.tombol-hapus').on('click', function(e){
    e.preventDefault();
    const href = $(this).attr('href');

    Swal.fire({
        title: 'Apakah anda yakin?',
        text: "Data akan dihapus",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#d33',
        cancelButtonColor: '#3085d6',
        confirmButtonText: 'Hapus'
    }).then((result) => {
        if (result.value) {
            document.location.href = href;
        }
    })
});


// datatables
$(document).ready(function () {
    $('#myTable').DataTable();
});

// highlight navbar
var path = location.pathname.split('/');
var url = location.origin + '/' + path[1] + '/' + path[2] + '/' + path[3];
// console.log(path);
// console.log(url);
$('ul.sidebar-nav li a').each(function () {
    if ($(this).attr('href') != undefined) {
        if ($(this).attr('href').indexOf(url) !== -1) {
            $(this).parent().addClass('active').parent('ul').addClass('show').parent('li').addClass('active');
            // if ($(this).attr('href').indexOf(url) !== -1) {
                
            // }
            // console.log($(this).attr('href').indexOf(url));
        }
    }
});
