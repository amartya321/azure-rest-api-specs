import "@typespec/http";
import "@typespec/rest";
import "@typespec/versioning";
import "@azure-tools/typespec-azure-core";
import "@azure-tools/typespec-azure-resource-manager";
import "./models.tsp";
import "./InternetGatewayRules.tsp";

using TypeSpec.Rest;
using TypeSpec.Http;
using TypeSpec.Versioning;
using Azure.ResourceManager.Foundations;
using Azure.Core;
using Azure.ResourceManager;

/**
 * Self service experience for Azure Network Fabric API.
 */
@armProviderNamespace("Microsoft.ManagedNetworkFabric")
@service({
  title: "Azure Network Fabric Management Service API",
})
@versioned(Versions)
@armCommonTypesVersion(Azure.ResourceManager.CommonTypes.Versions.v5)
namespace Microsoft.ManagedNetworkFabric;

interface Operations extends Azure.ResourceManager.Operations {}

/**
 * The available API versions.
 */
enum Versions {
  /**
   * The 2024-02-15 API version.
   */
  @useDependency(Azure.ResourceManager.Versions.v1_0_Preview_1)
  @useDependency(Azure.Core.Versions.v1_0_Preview_1)
  v2024_02_15: "2024-02-15",
}