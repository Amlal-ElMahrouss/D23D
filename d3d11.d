/**
 * @file d3d.d
 * @brief Direct3D Core functions for D.
 */

import core.sys.windows.windows;

extern (Windows)
{
	interface IDXGIAdapter;
	interface ID3D11DeviceContext;
	interface ID3D11Device;
	interface IDXGISwapChain;
}

enum D3D_DRIVER_TYPE
{
	D3D_DRIVER_TYPE_UNKNOWN = 0,
	D3D_DRIVER_TYPE_HARDWARE,
	D3D_DRIVER_TYPE_REFERENCE,
	D3D_DRIVER_TYPE_NULL,
	D3D_DRIVER_TYPE_SOFTWARE,
	D3D_DRIVER_TYPE_WARP
}

enum D3D_FEATURE_LEVEL
{
	D3D_FEATURE_LEVEL_1_0_CORE,
	D3D_FEATURE_LEVEL_9_1,
	D3D_FEATURE_LEVEL_9_2,
	D3D_FEATURE_LEVEL_9_3,
	D3D_FEATURE_LEVEL_10_0,
	D3D_FEATURE_LEVEL_10_1,
	D3D_FEATURE_LEVEL_11_0,
	D3D_FEATURE_LEVEL_11_1,
	D3D_FEATURE_LEVEL_12_0,
	D3D_FEATURE_LEVEL_12_1,
	D3D_FEATURE_LEVEL_12_2
}

extern (Windows)
{
	HRESULT D3D11CreateDeviceAndSwapChain(
							  IDXGIAdapter* pAdapter,
							  D3D_DRIVER_TYPE driverTupe,
							  HMODULE softwareRenderer,
							  UINT flags,
							  const D3D_FEATURE_LEVEL* pFeaturesReq,
							  UINT levelsAccept,
							  UINT yourSDKVer,
							  IDXGISwapChain** ppSwapChain,
							  ID3D11Device** ppDevice,
							  D3D_FEATURE_LEVEL* pFeatureLevel,
							  ID3D11DeviceContext** ppImmediateContext);


}