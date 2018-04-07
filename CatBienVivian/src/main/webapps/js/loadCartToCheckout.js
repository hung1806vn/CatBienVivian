function loadCart() {
	var itemAdded;
	var cartIsEmpty = $('.list-cart').hasClass('empty');

	cart = JSON.parse(localStorage.getItem('cart'));
	if (cart.products.length != "0") {
		$.each(cart.products, function(i, item) {
			itemAdded = $(
					'<tr class="rem1"><td class="invert">'+cart.products[i].id+'</td>'
					+'<td class="invert-image"><a href="'+cart.products[i].url+'"><img src="'+cart.products[i].img+'" alt=" " class="img-responsive" /></a></td>'
					+'<td class="invert">'+cart.products[i].quantity+'</td>'
					+'<td class="invert">'+cart.products[i].name+'</td>'
					+'<td class="invert">'+cart.products[i].price+' VNĐ</td></tr>'
					);
			$('.list-cart').find('.checkout-right').find('.timetable_sub').find('.cart-data').eq(0).prepend(itemAdded);
			$('.list-cart').removeClass('empty');
		})
	}
	return true;
}