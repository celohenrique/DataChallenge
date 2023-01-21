import UIKit

let formatador = DateFormatter()

formatador.dateFormat = "dd/MM/yyyy"

let meuAniversario = formatador.date(from: "16/03/2023")

func calcularData(aniversario: Date) -> String {
    let startTime = Date()

    let difference = Calendar.current.dateComponents([.day], from: startTime, to: aniversario)
    
    return "Faltam \(difference.day!) dias para o seu aniversário"
}

let mensagem = calcularData(aniversario: meuAniversario!)
print(mensagem)


