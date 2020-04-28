recover_url = ""

fetch(recover_url)
.then(response => response.json())
.then(recoverArray => {
    recoverArray.map(activitie => {
        const activitieCard = document.createElement()
    })
})