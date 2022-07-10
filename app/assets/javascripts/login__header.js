class MobileMenu{
    constructor(){
        this.DOM = {};
        this.DOM.btn = document.querySelector('.login-mobile-menu-icon');
        this.DOM.container = document.querySelector('global-container');
        this.eventType = this._getEventType()
        this._addEvent();
    }
        _getEventType(){
            return window.ontouchstart ? 'touchstart' : 'click';
        }
        _toggle() {
          this.DOM.container.classList.toggle('menu-open')
        }

        _addEvent() {
          this.DOM.btn.addEventListener = ('touch', this._toggle.bind(this));
        }
}
const header = document.querySelector('.login-header');
const _navAnimation = function(el, inview) {
    if(inview){
        header.classList.remove('triggered');
    }else{
        header.classList.add('triggerd')
    }
}