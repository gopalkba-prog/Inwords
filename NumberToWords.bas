Function CurrencyToWords(Amount As Currency) As String
    Dim Rupees As Long
    Dim Paise As Long
    Dim Result As String

    ' Separate the amount into rupees and paise
    Rupees = Fix(Amount)
    Paise = (Amount - Rupees) * 100

    ' Get the words for rupees and paise
    Result = NumberToWords(Rupees) & " Rupees"
    If Paise > 0 Then
        Result = Result & " and " & NumberToWords(Paise) & " Paise"
    End If

    CurrencyToWords = Result
End Function