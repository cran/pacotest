context("Regression tests for pacotestRvineSingleCopula")

context("unit tests for pacotest with options:
        testType=CCC, grouping = TreeCCC, finalComparison = pairwiseMax, withEstUncert = TRUE")
test_that("pacotestRvineSingleCopula5", {
  testthat::skip_on_cran()
  
  properties = c('testType', 'grouping', 'finalComparison', 'withEstUncert', 'estUncertWithRanks')
  values = c('CCC', 'TreeCCC', 'pairwiseMax', 'TRUE', 'FALSE')
  
  thisTestsInd = filterPacotestOptionLists(pacotestOptions, properties, values)
  
  maxNTests = length(pacotestOptions)
  
  resPacotestComputed = matrix(NA, maxNTests, 1)
  
  for (iTest in thisTestsInd)
  {
    set.seed(seedsPerTest[iTest])
    resPacotestComputed[iTest,1] = pacotestRvineSingleCopula(data5, rvmHatData5, pacotestOptions[[iTest]], 3, 1)$pValue
    
    expect_equal(resPacotestComputed[iTest,1],hardCodedResPacotestRvineSingleCopula[iTest,1], tolerance = 1e-2)
    
  }
  
})

context("unit tests for pacotest with options:
        testType=CCC, grouping = TreeCCC, finalComparison = all, withEstUncert = TRUE")
test_that("pacotestRvineSingleCopula6", {
  
  properties = c('testType', 'grouping', 'finalComparison', 'withEstUncert', 'estUncertWithRanks')
  values = c('CCC', 'TreeCCC', 'all', 'TRUE', 'FALSE')
  
  thisTestsInd = filterPacotestOptionLists(pacotestOptions, properties, values)
  
  maxNTests = length(pacotestOptions)
  
  resPacotestComputed = matrix(NA, maxNTests, 1)
  
  for (iTest in thisTestsInd)
  {
    set.seed(seedsPerTest[iTest])
    resPacotestComputed[iTest,1] = pacotestRvineSingleCopula(data5, rvmHatData5, pacotestOptions[[iTest]], 3, 1)$pValue
    
    expect_equal(resPacotestComputed[iTest,1],hardCodedResPacotestRvineSingleCopula[iTest,1], tolerance = 1e-2)
    
  }
  
})


context("unit tests for pacotest with options:
        testType=CCC, grouping = TreeEC, finalComparison = pairwiseMax, withEstUncert = TRUE")
test_that("pacotestRvineSingleCopula7", {
  testthat::skip_on_cran()
  
  properties = c('testType', 'grouping', 'finalComparison', 'withEstUncert', 'estUncertWithRanks')
  values = c('CCC', 'TreeEC', 'pairwiseMax', 'TRUE', 'FALSE')
  
  thisTestsInd = filterPacotestOptionLists(pacotestOptions, properties, values)
  
  maxNTests = length(pacotestOptions)
  
  resPacotestComputed = matrix(NA, maxNTests, 1)
  
  for (iTest in thisTestsInd)
  {
    set.seed(seedsPerTest[iTest])
    resPacotestComputed[iTest,1] = pacotestRvineSingleCopula(data5, rvmHatData5, pacotestOptions[[iTest]], 3, 1)$pValue
    
    expect_equal(resPacotestComputed[iTest,1],hardCodedResPacotestRvineSingleCopula[iTest,1], tolerance = 1e-2)
    
  }
  
})

context("unit tests for pacotest with options:
        testType=CCC, grouping = TreeEC, finalComparison = all, withEstUncert = TRUE")
test_that("pacotestRvineSingleCopula8", {
  testthat::skip_on_cran()
  
  properties = c('testType', 'grouping', 'finalComparison', 'withEstUncert', 'estUncertWithRanks')
  values = c('CCC', 'TreeEC', 'all', 'TRUE', 'FALSE')
  
  thisTestsInd = filterPacotestOptionLists(pacotestOptions, properties, values)
  
  maxNTests = length(pacotestOptions)
  
  resPacotestComputed = matrix(NA, maxNTests, 1)
  
  for (iTest in thisTestsInd)
  {
    set.seed(seedsPerTest[iTest])
    resPacotestComputed[iTest,1] = pacotestRvineSingleCopula(data5, rvmHatData5, pacotestOptions[[iTest]], 3, 1)$pValue
    
    expect_equal(resPacotestComputed[iTest,1],hardCodedResPacotestRvineSingleCopula[iTest,1], tolerance = 1e-2)
    
  }
  
})

context("unit tests for pacotest with options:
        testType=CCC, grouping = SumMedian, withEstUncert = TRUE")
test_that("pacotestRvineSingleCopula9", {
  testthat::skip_on_cran()
  
  properties = c('testType', 'grouping', 'withEstUncert')
  values = c('CCC', 'SumMedian', 'TRUE')
  
  thisTestsInd = filterPacotestOptionLists(pacotestOptions, properties, values)
  
  maxNTests = length(pacotestOptions)
  
  resPacotestComputed = matrix(NA, maxNTests, 1)
  
  for (iTest in thisTestsInd)
  {
    set.seed(seedsPerTest[iTest])
    resPacotestComputed[iTest,1] = pacotestRvineSingleCopula(data5, rvmHatData5, pacotestOptions[[iTest]], 3, 1)$pValue
    
    expect_equal(resPacotestComputed[iTest,1],hardCodedResPacotestRvineSingleCopula[iTest,1], tolerance = 1e-2)
    
  }
  
})

context("unit tests for pacotest with options:
testType=CCC, grouping = ProdThirdsII, withEstUncert = TRUE")
test_that("pacotestRvineSingleCopula10", {
  testthat::skip_on_cran()
  
  properties = c('testType', 'grouping', 'withEstUncert')
  values = c('CCC', 'ProdThirdsII', 'TRUE')
  
  thisTestsInd = filterPacotestOptionLists(pacotestOptions, properties, values)
  
  maxNTests = length(pacotestOptions)
  
  resPacotestComputed = matrix(NA, maxNTests, 1)
  
  for (iTest in thisTestsInd)
  {
    set.seed(seedsPerTest[iTest])
    resPacotestComputed[iTest,1] = pacotestRvineSingleCopula(data5, rvmHatData5, pacotestOptions[[iTest]], 3, 1)$pValue
    
    expect_equal(resPacotestComputed[iTest,1],hardCodedResPacotestRvineSingleCopula[iTest,1], tolerance = 1e-2)
    
  }
  
})

context("unit tests for pacotest with options:
testType=CCC, grouping = SumThirdsIII, withEstUncert = TRUE")
test_that("pacotestRvineSingleCopula11", {
  testthat::skip_on_cran()
  
  properties = c('testType', 'grouping', 'withEstUncert')
  values = c('CCC', 'SumThirdsIII', 'TRUE')
  
  thisTestsInd = filterPacotestOptionLists(pacotestOptions, properties, values)
  
  maxNTests = length(pacotestOptions)
  
  resPacotestComputed = matrix(NA, maxNTests, 1)
  
  for (iTest in thisTestsInd)
  {
    set.seed(seedsPerTest[iTest])
    resPacotestComputed[iTest,1] = pacotestRvineSingleCopula(data5, rvmHatData5, pacotestOptions[[iTest]], 3, 1)$pValue
    
    expect_equal(resPacotestComputed[iTest,1],hardCodedResPacotestRvineSingleCopula[iTest,1], tolerance = 1e-2)
    
  }
  
})

context("unit tests for pacotest with options:
        testType=CCC, grouping = TreeCCC, finalComparison = pairwiseMax, withEstUncert = TRUE, estUncertWithRanks = TRUE")
test_that("pacotestRvineSingleCopula12", {
  testthat::skip_on_cran()
  
  properties = c('testType', 'grouping', 'finalComparison', 'withEstUncert', 'estUncertWithRanks')
  values = c('CCC', 'TreeCCC', 'pairwiseMax', 'TRUE', 'TRUE')
  
  thisTestsInd = filterPacotestOptionLists(pacotestOptions, properties, values)
  
  maxNTests = length(pacotestOptions)
  
  resPacotestComputed = matrix(NA, maxNTests, 1)
  
  for (iTest in thisTestsInd)
  {
    set.seed(seedsPerTest[iTest])
    resPacotestComputed[iTest,1] = pacotestRvineSingleCopula(data5, rvmHatData5, pacotestOptions[[iTest]], 3, 1)$pValue
    
    expect_equal(resPacotestComputed[iTest,1],hardCodedResPacotestRvineSingleCopula[iTest,1], tolerance = 1e-2)
    
  }
  
})

context("unit tests for pacotest with options:
        testType=CCC, grouping = TreeCCC, finalComparison = all, withEstUncert = TRUE, estUncertWithRanks = TRUE")
test_that("pacotestRvineSingleCopula13", {
  testthat::skip_on_cran()
  
  properties = c('testType', 'grouping', 'finalComparison', 'withEstUncert', 'estUncertWithRanks')
  values = c('CCC', 'TreeCCC', 'all', 'TRUE', 'TRUE')
  
  thisTestsInd = filterPacotestOptionLists(pacotestOptions, properties, values)
  
  maxNTests = length(pacotestOptions)
  
  resPacotestComputed = matrix(NA, maxNTests, 1)
  
  for (iTest in thisTestsInd)
  {
    set.seed(seedsPerTest[iTest])
    resPacotestComputed[iTest,1] = pacotestRvineSingleCopula(data5, rvmHatData5, pacotestOptions[[iTest]], 3, 1)$pValue
    
    expect_equal(resPacotestComputed[iTest,1],hardCodedResPacotestRvineSingleCopula[iTest,1], tolerance = 1e-2)
    
  }
  
})

context("unit tests for pacotest with options:
testType=VI")
test_that("pacotestRvineSingleCopula14", {
  
  properties = c('testType')
  values = c('VI')
  
  thisTestsInd = filterPacotestOptionLists(pacotestOptions, properties, values)
  
  
  maxNTests = length(pacotestOptions)
  
  resPacotestComputed = matrix(NA, maxNTests, 1)
  
  for (iTest in thisTestsInd)
  {
    set.seed(seedsPerTest[iTest])
    resPacotestComputed[iTest,1] = pacotestRvineSingleCopula(data5, rvmHatData5, pacotestOptions[[iTest]], 3, 1)$pValue
    
    expect_equal(resPacotestComputed[iTest,1],hardCodedResPacotestRvineSingleCopula[iTest,1], tolerance = 1e-2)
    
  }
  
})

context("unit tests for pacotest with options:
        testType=EC")
test_that("pacotestRvineSingleCopula15", {
  testthat::skip_on_cran()
  
  properties = c('testType')
  values = c('EC')
  
  thisTestsInd = filterPacotestOptionLists(pacotestOptions, properties, values)
  
  
  maxNTests = length(pacotestOptions)
  
  resPacotestComputed = matrix(NA, maxNTests, 1)
  
  for (iTest in thisTestsInd)
  {
    set.seed(seedsPerTest[iTest])
    resPacotestComputed[iTest,1] = pacotestRvineSingleCopula(data5[1:341,], rvmHatData5, pacotestOptions[[iTest]], 3, 1)$pValue
    
    expect_equal(resPacotestComputed[iTest,1],hardCodedResPacotestRvineSingleCopula[iTest,1], tolerance = 1e-2)
    
  }
  
})

