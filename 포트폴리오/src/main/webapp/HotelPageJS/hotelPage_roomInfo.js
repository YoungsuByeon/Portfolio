(() => {
	const time = 2000;
	const carousel = document.querySelector('.carousel');
	const jumbotron = carousel.querySelector('.jumbotron');
	const gallery = carousel.querySelector('.gallery');
	const galleryImages = [...gallery.querySelectorAll('figure')];

	let timer = 0;
	let pause = false;

	jumbotron.innerHTML = gallery.innerHTML;
	const count = gallery.childElementCount;
	carousel.style.setProperty('--count', count);

	if(count <= 1) {
		carousel.classList.add('single');
		return;
	}

	const setIndex = i => {
		index = i;
		carousel.style.setProperty('--index', i);

		if (timer) clearTimeout(timer);
		timer = setTimeout(() => {
			setIndex(pause ? i : (i + 1) % count);
		}, time);
	}

	galleryImages.forEach(e => {
		e.addEventListener('click', ({ currentTarget }) => {
			setIndex(galleryImages.indexOf(currentTarget));
		});
	});

	carousel.addEventListener('mouseenter', () => pause = true);
	carousel.addEventListener('mouseleave', () => pause = false);

	setIndex(0);
})();