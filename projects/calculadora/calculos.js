const maxDigits = 6
var digits = ""
var lastOp = ""

function digitPressed(op) {
    if(digits.length>= maxDigits) {
        return
    } else {
        digits += op.toString()
        numerosCalculadora.text = digits.toString()
        lastOp = op
    }
}
