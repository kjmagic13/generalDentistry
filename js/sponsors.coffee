---
---

$ ->

	googleSheetKey = "1iXNfU49QJvmW5QP6p50gbEc3Qbqi_EoByVEU6d4WAIY"

	Highcharts.data
		googleSpreadsheetKey: googleSheetKey
		googleSpreadsheetWorksheet: 1
		parsed: (columns) ->
			i = 1
			unorderedList = $("<ul>")

			while i < columns[0].length
				unorderedList.append $("<li>").text columns[0][i] if columns[0][i]?
				i++
			return $("#sponsors").html unorderedList if columns[0][1]?

			