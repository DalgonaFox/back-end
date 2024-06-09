const fs = require('fs');

fs.readFile('frutas.json', 'utf8', (error, data) => {
    if (error){
        console.error('Erro ao ler o arquivo', error)
        return 
    } 

    let json = JSON.parse(data)

    const fruta = {
        nome: "Morango",
        cor: "Vermelho"
    }

    json.frutas.push(fruta);

    const novoJson = JSON.stringify(json, null, 2);

    fs.writeFile('frutas.json', novoJson, 'utf8', (error) => {
        if(error){
            console.error('Erro ao ler o arquivo', error)
            return
        }
        console.log('Dados atualizados com sucesso!')
    })
});