-- View alerts for a tenant
USE [15B-QAT-Transactional]
SELECT *
FROM Tenant.Tenant
WHERE Client = 'BA' AND Environment = 'QAT'

SELECT *
FROM Alert.Alert
WHERE TenantId = 38 --ID from query above

SELECT *
FROM Alert.AlertDetail
WHERE AlertId IN (SELECT alertId
FROM Alert.Alert
WHERE TenantId = 38 --ID from query above
)

-- View group subscriptions
USE [15B-QAT-Transactional]
SELECT *
FROM Tenant.Tenant
WHERE Client = 'BA' AND Environment = 'QAT'

SELECT *
FROM Alert.Subscription
WHERE TenantID = 38 --ID From above