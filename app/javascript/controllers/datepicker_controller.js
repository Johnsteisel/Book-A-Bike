import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
    const bookedDates = JSON.parse(this.element.dataset.datepickerBookedDates);

    const disabledRanges = bookedDates.map(dateRange => {
      return {
        from: dateRange.from,
        to: dateRange.to
      };
    });

    const options = {
      mode: "range",
      altInput: true,
      altFormat: "F j, Y",
      dateFormat: "Y-m-d",
      minDate: "today",
      disable: disabledRanges,
    }
    flatpickr(this.element, options)
  }
}
