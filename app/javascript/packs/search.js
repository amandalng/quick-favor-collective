// const searchInput = document.querySelector('#searchInput');
// const table = document.querySelector('#userTable');
// const row = document.querySelectorAll('.userRow');

// searchInput.addEventListener("keyup", (e) => {
//   row.forEach(
//     )
// })

const countryInput = document.getElementById('countries');
const industryInput = document.getElementById('industries')
const userInput = document.getElementById('userSearch');
// const table = document.querySelector('#userTable');
const tableRow = document.querySelectorAll('.userRow');

countryInput.addEventListener("change", (e) => {
  let country = countryInput.value
  let nameInput = userInput.value.toUpperCase()
  tableRow.forEach((row) => {
    row.classList.remove("inactive-row")
    if (country === "All countries" || country === "Select country") {
      row.classList.remove("inactive-row")
    } else if (row.firstElementChild.textContent.split('\n')[2].includes(country) === false || row.firstElementChild.textContent.split('\n')[1].toUpperCase().includes(nameInput) === false) {
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
  let country = countryInput.value
    if ((row.firstElementChild.textContent.split('\n')[2].includes(country) === false && country != "All countries") || (row.firstElementChild.textContent.split('\n')[1].toUpperCase().includes(nameInput) === false)) {
      row.classList.add("inactive-row")
    }
  })
});

userInput.addEventListener("keyup", (e) => {
  let nameInput = userInput.value.toUpperCase()
  let country = countryInput.value
  let industry = industryInput.value
  tableRow.forEach((row) => {
    row.classList.remove("inactive-row")
    if (row.firstElementChild.textContent.split('\n')[1].toUpperCase().includes(nameInput) === false || (row.firstElementChild.textContent.split('\n')[2].includes(country) === false && country != "All countries") || (row.firstElementChild.textContent.split('\n')[2].includes(industry) === false && industry != "All industries")) {
      row.classList.add("inactive-row")
    }
    if (nameInput === "" && (row.firstElementChild.textContent.split('\n')[2].includes(country) === false && country != "All countries") && (row.firstElementChild.textContent.split('\n')[2].includes(industry) === false && industry != "All industries")) {
      row.classList.remove("inactive-row")

    }
  })
})
