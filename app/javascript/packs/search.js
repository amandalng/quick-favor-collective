// const searchInput = document.querySelector('#searchInput');
// const table = document.querySelector('#userTable');
// const row = document.querySelectorAll('.userRow');

// searchInput.addEventListener("keyup", (e) => {
//   row.forEach(
//     )
// })

const cityInput = document.getElementById('cities');
const industryInput = document.getElementById('industries')
const userInput = document.getElementById('userSearch');
// const table = document.querySelector('#userTable');
const tableRow = document.querySelectorAll('.userRow');

cityInput.addEventListener("change", (e) => {
  let city = cityInput.value
  let nameInput = userInput.value.toUpperCase()
  tableRow.forEach((row) => {
    row.classList.remove("inactive-row")
    if (city === "All cities" || city === "Select city") {
      row.classList.remove("inactive-row")
    } else if (row.firstElementChild.textContent.split('\n')[2].includes(city) === false || row.firstElementChild.textContent.split('\n')[1].toUpperCase().includes(nameInput) === false) {
      row.classList.add("inactive-row")
    }
  })
  tableRow.forEach((row) => {
  let industry = industryInput.value
    if ((row.firstElementChild.textContent.split('\n')[2].includes(industry) === false && industry != "All industries") || (row.firstElementChild.textContent.split('\n')[1].toUpperCase().includes(nameInput) === false)) {
      row.classList.add("inactive-row")
    }
  })
})

industryInput.addEventListener("change", (e) => {
  let industry = industryInput.value
  let nameInput = userInput.value.toUpperCase()
  tableRow.forEach((row) => {
    row.classList.remove("inactive-row")
    if (industry === "All industries" || industry === "Select industries") {
      row.classList.remove("inactive-row")
    } else if (row.firstElementChild.textContent.split('\n')[2].includes(industry) === false || row.firstElementChild.textContent.split('\n')[1].toUpperCase().includes(nameInput) === false) {
      row.classList.add("inactive-row")
    }
  })
  tableRow.forEach((row) => {
  let city = cityInput.value
    if ((row.firstElementChild.textContent.split('\n')[2].includes(city) === false && city != "All cities") || (row.firstElementChild.textContent.split('\n')[1].toUpperCase().includes(nameInput) === false)) {
      row.classList.add("inactive-row")
    }
  })
});

userInput.addEventListener("keyup", (e) => {
  let nameInput = userInput.value.toUpperCase()
  let city = cityInput.value
  let industry = industryInput.value
  tableRow.forEach((row) => {
    row.classList.remove("inactive-row")
    if (row.firstElementChild.textContent.split('\n')[1].toUpperCase().includes(nameInput) === false || (row.firstElementChild.textContent.split('\n')[2].includes(city) === false && city != "All cities") || (row.firstElementChild.textContent.split('\n')[2].includes(industry) === false && industry != "All industries")) {
      row.classList.add("inactive-row")
    }
    if (nameInput === "" && (row.firstElementChild.textContent.split('\n')[2].includes(city) === false && city != "All cities") && (row.firstElementChild.textContent.split('\n')[2].includes(industry) === false && industry != "All industries")) {
      row.classList.remove("inactive-row")

    }
  })
})
