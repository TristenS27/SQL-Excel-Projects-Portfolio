This dataset includes customers who have paid off their loans, who have been past due and put into collection without paying back their loan and interests, and who have paid off only after they were put in collection. 
The original dataset contains 113937 rows and 81 columns out of which 12 features of interest were selected. Eight hundred and seventy-one data points were removed from the analysis due to inconsistencies or missing information.
We are trying to track loan book performance by looking at the disbursements, amount paid, returns, debt to income ratio, and loss rate
1. Imported the dataset into MySQL and modified the LoanOriginationDate into 'date' datatype
2. Selected the LoanOriginalAmount, LP_CustomerPayments, EstimatedReturn, DebtToIncomeRatio, and EstimatedLoss from the prosperloandata
- **LoanOriginalAmount**: The origination amount of the loan.
- **LP_CustomerPayments**: Pre charge-off cumulative gross payments made by the borrower on the loan. If the loan has charged off, this value will exclude any recoveries.
- **EstimatedReturn**: Estimated return is the difference between the Estimated Effective Yield and the Estimated Loss Rate. Applicable for loans originated after July 2009.
- **DebtToIncomeRatio**: The debt to income ratio of the borrower at the time the credit profile was pulled. This value is Null if the debt to income ratio is not available.
- **EstimatedLoss**: Estimated loss is the estimated principal loss on charge-offs. Applicable for loans originated after July 2009.
3. Performed aggregation analysis, GROUP BY, and ORDER BY
4. Visualized the cleaned dataset (ProserLoanDataCleaned.csv) in Tableau Public 
https://www.kaggle.com/datasets/nurudeenabdulsalaam/prosper-loan-dataset
