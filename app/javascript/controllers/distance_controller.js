import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    lat: Number,
    lon: Number
  }

  connect() {
    navigator.geolocation.getCurrentPosition(this.setDistance.bind(this))
  }

  setDistance(pos) {
    const crd = pos.coords

    const dist = this.distance(crd.latitude, crd.longitude, this.latValue, this.lonValue)
    console.log(dist);

    this.element.textContent = `${dist.toFixed(1)}km's away`
    this.element.classList.remove('invisible')

  }

  distance(lat1, lon1, lat2, lon2) {
    console.log(lat1, lon1, lat2, lon2);
    const r = 6371; // km
    const p = Math.PI / 180;

    const a = 0.5 - Math.cos((lat2 - lat1) * p) / 2
    + Math.cos(lat1 * p) * Math.cos(lat2 * p) *
    (1 - Math.cos((lon2 - lon1) * p)) / 2;

    return 2 * r * Math.asin(Math.sqrt(a));
  }

}
