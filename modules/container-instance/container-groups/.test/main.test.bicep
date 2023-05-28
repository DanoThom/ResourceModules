targetScope = 'subscription'

// ========== //
// Test Cases //
// ========== //

var namePrefix = 'crml'

// TEST 1 - COMMON
module common 'common/main.test.bicep' = {
  name: '${uniqueString(deployment().name)}-common-test'
  params: {
    namePrefix: namePrefix
  }
}

// TEST 2 - ENCR
module encr 'encr/main.test.bicep' = {
  name: '${uniqueString(deployment().name)}-encr-test'
  params: {
    namePrefix: namePrefix
  }
}

// TEST 3 - MIN
module min 'min/main.test.bicep' = {
  name: '${uniqueString(deployment().name)}-min-test'
  params: {
    namePrefix: namePrefix
  }
}

// TEST 4 - PRIVATE
module private 'private/main.test.bicep' = {
  name: '${uniqueString(deployment().name)}-private-test'
  params: {
    namePrefix: namePrefix
  }
}
