-- *Track loan book performance
-- *Disbursements, amount paid MOM, returns, debt to income ratio, loss rate

-- *Change date origination date column from text to date datatype. Comment out after done
ALTER TABLE prosper_loan_data.prosperloandata MODIFY LoanOriginationDate date

SELECT 
	-- LoanOriginationDate,
	date_format(LoanOriginationDate, '%y-%m-01 00:00:00') as month,
        date_format(LoanOriginationDate, '%y') as year,
	sum(LoanOriginalAmount) as total_dis,
	round(sum(LP_CustomerPayments),0) as total_paid,
	round(avg(EstimatedReturn),2) as profit,
        round(avg(DebtToIncomeRatio),2) as debtincome,
	round(avg(EstimatedLoss),2) as lossrate
    
-- *Some metrics are only viable from around July 2009  
-- *We will group by month and year as they are non-aggregated values
FROM prosper_loan_data.prosperloandata
WHERE LoanOriginationDate > '2009-12-31'
GROUP BY 1,2
ORDER BY 1;
