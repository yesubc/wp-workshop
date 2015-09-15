(function($) {
    $(function() {
        var jcarousel = $('.jcarousel');

        var hasElem = $('ul.paging_btns .active').length;
        if (hasElem) {
            var currentItemId = $('ul.paging_btns .active').attr('id');
            var numCount = currentItemId.length;
            var currentItemNum = currentItemId.substr(4, numCount - 4);
        }
        var animTime = 200;

        jcarousel.on('jcarousel:reload jcarousel:create', function() {
            var width = jcarousel.innerWidth();
            var newWidth;
            var caruselWidth = width;
            var items = $('.jcarousel').jcarousel('items');
            var itemCount = items.length;
            var isNumeric = $('ul.paging_btns li').hasClass('nbox');
            var itemsFullWidth;

            if (!isNumeric) {
                if (width < 500) {
                    width = (width / 2) - 2;
                }
                else if (width >= 500 && width <= 750) {
                    width = width / 3;
                }
                else if (width > 750) {
                    width = width / 4;
                }
                width = width - 2;
                itemsFullWidth = itemCount * width;
                $('ul.paging_btns li.button_style').css('width', width + 'px');
            } else {
                var numericItemsWidth = $('ul.paging_btns li.nbox').outerWidth(true);
                itemsFullWidth = itemCount * numericItemsWidth;
                $('ul.paging_btns li.button_style').css('width', 'auto');
                $('ul.paging_btns li.button_style').css('height', 'auto');
            }

            if (caruselWidth < itemsFullWidth) {
                $('a.jcarousel-control-prev').show();
                $('a.jcarousel-control-next').show();
            } else {
                $('a.jcarousel-control-prev').hide();
                $('a.jcarousel-control-next').hide();
            }

            $('.jcarousel').hover(function() {
                $('a.jcarousel-control-prev').animate({
                    left: 15
                }, animTime);
                $('a.jcarousel-control-next').animate({
                    right: 15
                }, animTime);
            }, function() {
                $('a.jcarousel-control-prev').animate({
                    left: -35
                }, animTime);
                $('a.jcarousel-control-next').animate({
                    right: -35
                }, animTime);
            });

            /*jcarousel.jcarousel('items').css('width', width + 'px');*/
        }).jcarousel({
            wrap: 'circular'
        });

        $('.jcarousel-control-prev').click(function() {
            $('.jcarousel').jcarousel('scroll', '-=1');
        });

        $('.jcarousel-control-next').click(function() {
            $('.jcarousel').jcarousel('scroll', '+=1');
        });
        if (hasElem) {
            $('.jcarousel').jcarousel('scroll', currentItemNum - 1);
        }
    });
})(jQuery);
