var cartCount;
var cartTotal;
function loadItemFromCart(trigger) {
	var itemAdded;
	var cartIsEmpty = $('.cd-cart-container').hasClass('empty');

	cart = JSON.parse(localStorage.getItem('cart'));
	if (cart.products.length != "0") {
		$.each(
			cart.products,
				function(i, item) {
					itemAdded = $('<li class="product">'
						+ '<div class="product-image">'
						+ '<a href="'+ cart.products[i].url +'">'
						+ '<img src="'+ cart.products[i].img +'" alt="placeholder">'
						+ '</a>'
						+ '</div>'
						+ '<div class="product-details">'
						+ '<h3><a href="'+cart.products[i].url+'">'
						+ cart.products[i].name
						+ '</a></h3>'
						+ '<span id="cd-price-'+ cart.products[i].id +'" class="price">'
						+ cart.products[i].price
						+ '</span>' 
						+ '<div hidden class="id">'
						+ cart.products[i].id
						+ '</div>'
						+ '<div class="actions">'
						+ '<a href="#0" class="delete-item">Xoá</a>'
						+ '<div class="quantity">'
						+ 'SL: <label id="cd-quantity-'
						+ cart.products[i].id + '">'
						+ cart.products[i].quantity + '</label>'
						+ '</div>' + '</div>' + '</div>' + '</li>');
					$('.cd-cart-container').find('.body').find('ul')
						.eq(0).prepend(itemAdded);
						// update number of items
					updateCartCount(cartIsEmpty,cart.products[i].quantity);
						// update total price
					updateCartTotal(cart.products[i].price * cart.products[i].quantity, true);
					$('.cd-cart-container').removeClass('empty');
				})
	}
	return true;
}
function updateCartCount(emptyCart, quantity) {
	cartCount = $('.cd-cart-container').children('.cd-cart-trigger').children(
			'.count');
	if (typeof quantity === 'undefined') {
		var actual = Number(cartCount.find('li').eq(0).text()) + 1;
		var next = actual + 1;

		if (emptyCart) {
			cartCount.find('li').eq(0).text(actual);
			cartCount.find('li').eq(1).text(next);
		} else {
			cartCount.addClass('update-count');

			setTimeout(function() {
				cartCount.find('li').eq(0).text(actual);
			}, 150);

			setTimeout(function() {
				cartCount.removeClass('update-count');
			}, 200);

			setTimeout(function() {
				cartCount.find('li').eq(1).text(next);
			}, 230);
		}
	} else {
		var actual = Number(cartCount.find('li').eq(0).text()) + quantity;
		var next = actual + 1;

		cartCount.find('li').eq(0).text(actual);
		cartCount.find('li').eq(1).text(next);
	}
}
function updateCartTotal(price, bool) {
	cartTotal = $('.cd-cart-container').find('.checkout').find('span');
	bool ? cartTotal
			.text((Number(cartTotal.text()) + Number(price)).toFixed(2))
			: cartTotal.text((Number(cartTotal.text()) - Number(price))
					.toFixed(2));
}