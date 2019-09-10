attach(train)
attach(test)

model <- lm(log(train$SalePrice) ~ train$MSSubClass+train$LotFrontage+train$LotArea+train$OverallQual+train$OverallCond+train$YearBuilt+train$YearRemodAdd+train$MasVnrArea+train$BsmtFinSF1+train$BsmtFinSF2+train$BsmtUnfSF+train$TotalBsmtSF+train$X1stFlrSF+train$X2ndFlrSF+train$LowQualFinSF+train$GrLivArea+train$BsmtFullBath+train$BsmtHalfBath+train$FullBath+train$HalfBath+train$BedroomAbvGr+train$KitchenAbvGr+train$TotRmsAbvGrd+train$Fireplaces+train$GarageYrBlt+train$GarageCars+train$GarageArea+train$WoodDeckSF+train$OpenPorchSF+train$EnclosedPorch+train$X3SsnPorch+train$ScreenPorch+train$PoolArea+train$MiscVal+train$MoSold+train$YrSold,data = train)
summary(model)
test1=na.omit(test)
pricePredict <- predict(model,data.frame(test1),interval = "pre")
pricePredict
