
var Noteworthy = function() {
    var photView = $("#photo-viewer");
    var notebook = $(".notebook");
    var pswpElement = document.querySelectorAll('.pswp')[0];

    photView.click(function() {
        console.log("clicked!");
        openPhotoSwipe();
    });

// build items array
    var items = [
        {
            src: 'https://images.unsplash.com/photo-1451303688941-9e06d4b1277a?crop=entropy&fit=crop&fm=jpg&h=800&ixjsv=2.1.0&ixlib=rb-0.3.5&q=80&w=1450',
            w: 1200,
            h: 900
        },
        {
            src: 'https://images.unsplash.com/photo-1451186859696-371d9477be93?crop=entropy&fit=crop&fm=jpg&h=800&ixjsv=2.1.0&ixlib=rb-0.3.5&q=80&w=1450',
            w: 1200,
            h: 900
        },
        {
            src: 'http://i.imgur.com/PBNZxH5.png',
            w: 900,
            h: 1200
        }
    ];

// define options (if needed)
    var options = {
        // optionName: 'option value'
        // for example:
        index: 0 // start at first slide
    };


    function openPhotoSwipe() {
        // Initializes and opens PhotoSwipe
        var gallery = new PhotoSwipe( pswpElement, PhotoSwipeUI_Default, items, options);
        gallery.init();
    }
};