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
$('ul.sidebar-nav li a').each(function () {
    if ($(this).attr('href') != undefined) {
        if ($(this).attr('href').indexOf(url) !== -1) {
            // $(this).parent().addClass('active');
            // $(this).parent().addClass('pertama').parent('ul').addClass('kedua').parent('li').addClass('ketiga').parent('ul').addClass('keempat').parent('li').addClass('kelima');
            // $(this).parent().addClass('active').parent('ul').addClass('show').parent('li').addClass('active').parent('ul').addClass('show').parent('li').addClass('active');
            $(this).parent().addClass('active').parent('ul').addClass('show').parent('li').addClass('active');
            // console.log($(this).parent().addClass('active').parent('ul').addClass('show').parent('li').addClass('active'));
        }
    }
});
