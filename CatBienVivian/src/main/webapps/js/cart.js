jQuery(document).ready(function($){
	if(localStorage.getItem('cart')===null){
		var cart = {};
		 cart.products = [];
		localStorage.setItem('cart', JSON.stringify(cart));	
	}
	else{
		var cart = JSON.parse(localStorage.getItem('cart')); 
		
	}

		

	var cartWrapper = $('.cd-cart-container');
	//product id - you don't need a counter in your real project but you can use your real product id
	var productId = cart.products.length + 1;

	//store jQuery objects
	var cartBody = cartWrapper.find('.body');
	var cartList = cartBody.find('ul').eq(0);
	var cartTotal = cartWrapper.find('.checkout').find('span');
	var cartTrigger = cartWrapper.children('.cd-cart-trigger');
	var cartCount = cartTrigger.children('.count')
	var addToCartBtn = $('.cd-add-to-cart');
	var undo = cartWrapper.find('.undo');
	var undoTimeoutId;

	if( cartWrapper.length > 0 ) {
		

		//add product to cart
		addToCartBtn.on('click', function(event){
			event.preventDefault();
			addToCart($(this));
		});

		//open/close cart
		cartTrigger.on('click', function(event){
			event.preventDefault();
			toggleCart();
		});

		//close cart when clicking on the .cd-cart-container::before (bg layer)
		cartWrapper.on('click', function(event){
			if( $(event.target).is($(this)) ) toggleCart(true);
		});

		//delete an item from the cart
		cartList.on('click', '.delete-item', function(event){
			event.preventDefault();
			removeProduct($(event.target).parents('.product'));
		});

		//update item quantity
		cartList.on('change', 'select', function(event){
			quickUpdateCart($(event.target).parents('.product'));
		});

	}

	function toggleCart(bool) {
		var cartIsOpen = ( typeof bool === 'undefined' ) ? cartWrapper.hasClass('cart-open') : bool;
		
		if( cartIsOpen ) {
			cartWrapper.removeClass('cart-open');
			//reset undo
			clearInterval(undoTimeoutId);
			undo.removeClass('visible');
			cartList.find('.deleted').remove();

			setTimeout(function(){
				cartBody.scrollTop(0);
				//check if cart empty to hide it
				if( Number(cartCount.find('li').eq(0).text()) == 0) cartWrapper.addClass('empty');
			}, 500);
		} else {
			cartWrapper.addClass('cart-open');
		}
	}

	function addToCart(trigger) {
		if (localStorage && localStorage.getItem('cart')) {
			var cart = JSON.parse(localStorage.getItem('cart'));   

			var cartIsEmpty = cartWrapper.hasClass('empty');

			//product
			var product = {};
			product.id = 5;
			product.name = "test5";
			product.price = "30000";
			product.quantity = 1;			

			for(var index = 0 ; index < cart.products.length; index++){
				if((cart.products[index].id) == product.id){
					if(cart.products[index].quantity<9){
						addExistCart(index);
						alert('updated successfully');
						return 'updated successfully';
					}
					else{
						alert('updated failed');
						return 'updated failed';
					}
				}
			}

			//update cart product list
			addProduct(product);
			//update number of items 
			updateCartCount(cartIsEmpty);
			//update total price
			updateCartTotal(product.price, true);

			//show cart
			cartWrapper.removeClass('empty');
			alert('added successfully');
			return 'added successfully';
		}

	}

	function addProduct(product) {
		//this is just a product placeholder
		//you should insert an item with the selected product info
		//replace productId, productName, price and url with your real product info
	
		addCartLocal(product);

		var productAdded = $(
			'<li class="product">'
			   +'<div class="product-image">'
			   		+'<a href="#0">'
					    +'<img src="img/product-preview.png" alt="placeholder">'
					+'</a>'
				+'</div>'
				+'<div class="product-details">'
					+'<h3><a href="#0">'+ product.name +'</a></h3>'
					+'<span class="price">'+ product.price +'</span>'
					+'<div hidden class="id">'+ product.id +'</div>'
					+'<div class="actions">'
						+'<a href="#0" class="delete-item">Delete</a>'
						+'<div class="quantity">'
							+'<label for="cd-product-'+ product.id +'">Qty</label>'
							+'<span class="select">'
								+'<select id="cd-product-'+ product.id +'" name="quantity">'
									+'<option value="1">1</option>'
									+'<option value="2">2</option>'
									+'<option value="3">3</option>'
									+'<option value="4">4</option>'
									+'<option value="5">5</option>'
									+'<option value="6">6</option>'
									+'<option value="7">7</option>'
									+'<option value="8">8</option>'
									+'<option value="9">9</option>'
								+'</select>'
							+'</span>'
						+'</div>'
					+'</div>'
				+'</div>'
			+'</li>');
		cartList.prepend(productAdded);
		
	}

	function addCartLocal(product) {
		// Retrieve the cart object from local storage
		if (localStorage && localStorage.getItem('cart')) {
			var cart = JSON.parse(localStorage.getItem('cart'));            

			cart.products.push(product);

			localStorage.setItem('cart', JSON.stringify(cart));
		} 
	}

	function removeProduct(product) {
		if (localStorage && localStorage.getItem('cart')) {
			var cart = JSON.parse(localStorage.getItem('cart'));     

			var productId = product.find('.id').text();
			clearInterval(undoTimeoutId);
			cartList.find('.deleted').remove();
			
			var topPosition = product.offset().top - cartBody.children('ul').offset().top ,
				productQuantity = Number(product.find('.quantity').find('select').val()),
				productTotPrice = Number(product.find('.price').text().replace('$', '')) * productQuantity;
			
			product.css('top', topPosition+'px').addClass('deleted');

			//update items count + total price
			updateCartTotal(productTotPrice, false);
			updateCartCount(true, -productQuantity);
			undo.addClass('visible');

			//wait 8sec before completely remove the item
			undoTimeoutId = setTimeout(function(){
				undo.removeClass('visible');
				cartList.find('.deleted').remove();
			}, 8000);

			for(var i = 0 ; i< cart.products.length; i++){
				if((cart.products[i].id) == productId){
					cart.products.splice(i,1);
					alert('deleted successfully');
				}
			}

			localStorage.setItem('cart', JSON.stringify(cart));
		}
	}

	function quickUpdateCart(product) {
		if (localStorage && localStorage.getItem('cart')) {
			var cart = JSON.parse(localStorage.getItem('cart'));            
			
			var quantity = 0;
			var price = 0;
			
			var productId = product.find('.id').text();
			
			cartList.children('li:not(.deleted)').each(function(){
				var singleQuantity = Number($(this).find('select').val());
				quantity = quantity + singleQuantity;
				price = price + singleQuantity*Number($(this).find('.price').text().replace('$', ''));
			});

			
			
			for(var i = 0 ; i< cart.products.length; i++){
				if((cart.products[i].id) == productId){
					cart.products[i].quantity = Number(product.find('.quantity').find('select').val());
					alert('updated successfully');
				}
			}
			
			localStorage.setItem('cart', JSON.stringify(cart));
			cartTotal.text(price.toFixed(2));
			cartCount.find('li').eq(0).text(quantity);
			cartCount.find('li').eq(1).text(quantity+1);
		}
	}

	function addExistCart(index) {
		if (localStorage && localStorage.getItem('cart')) {
			var cart = JSON.parse(localStorage.getItem('cart'));            
			
			var quantity = 0;
			var price = 0;

			cart.products[index].quantity += 1; 
			$('#cd-product-'+cart.products[index].id +' option[value='+ cart.products[index].quantity +']').attr('selected', 'selected');

			cartList.children('li:not(.deleted)').each(function(){
				var singleQuantity = Number($(this).find('select').val());
				quantity = quantity + singleQuantity;
				price = price + singleQuantity*Number($(this).find('.price').text().replace('$', ''));
			});

			localStorage.setItem('cart', JSON.stringify(cart));
			cartTotal.text(price.toFixed(2));
			cartCount.find('li').eq(0).text(quantity);
			cartCount.find('li').eq(1).text(quantity+1);
		}
	}

	function updateCartCount(emptyCart, quantity) {
		if( typeof quantity === 'undefined' ) {
			var actual = Number(cartCount.find('li').eq(0).text()) + 1;
			var next = actual + 1;
			
			if( emptyCart ) {
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
		bool ? cartTotal.text( (Number(cartTotal.text()) + Number(price)).toFixed(2) )  : cartTotal.text( (Number(cartTotal.text()) - Number(price)).toFixed(2) );
	}
});