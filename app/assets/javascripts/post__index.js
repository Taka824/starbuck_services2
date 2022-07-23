document.addEventListener('DOMContentLoaded', function(){
  const hero = new HeroSlider();
});
class HeroSlider{
  constructor(){
    this.swiper = new Swiper('.swiper',{
      loop: true,
      grabCursor: true,
      effect: 'coverflow',
      centeredSlides: true,
      slidesPerView: 1,
      speed: 1000,
      breakpoints: {
        1024: {
          slidesPerView: 2,
        }
      },
      autoplay: {
        delay: 4000,
        disableOnInteraction: false
      }
    });
  }
}

  