Function CurrencyToWords(amount As Currency) As String
    Dim rupees As Long
    Dim paise As Long
    rupees = Int(amount)
    paise = Int((amount - rupees) * 100)

    CurrencyToWords = "Rupees " & NumberToWords(rupees) & " and Paise " & NumberToWords(paise)
End Function