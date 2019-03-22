#include "Game.h"

ShUser * g_pUser		= shNULL;

float g_fGlobalTime = 0.0f;
float g_fCameraSpeed = 20.0f;	// 10.0f -> normal | 100.0f -> High speed
float fTime = 0.0f;


/**
 * Called to initialize DisplayProperties
 */
void ShEntryPoint::SetupDisplayProperties(bool & bLandscape, bool & bEnable3D, bool & bEnableZ, bool & bUseSpecular, bool & bUsePointLights, bool & bUseShadow, int & width, int & height)
{
	bLandscape		= false;
	bEnable3D		= true;
	bEnableZ		= true;
	bUseSpecular	= false;
	bUsePointLights	= true;
	bUseShadow		= true;
	width			= 1280;
	height			= 720;
}

/**
 * Called before engine initialization
 */
void ShEntryPoint::OnPreInitialize(void)
{
	// ...
}

/**
 * Called after engine initialization
 */
void ShEntryPoint::OnPostInitialize(void)
{
	Plugin * pPlugin = new Plugin();
	ShApplication::RegisterPlugin(pPlugin);

	//ShGUI::LoadGUIAndSSS(CShIdentifier("gui_test"), ShGUI::GetRootControl());

	//Load level
	CShIdentifier idLevel("3denvironnementwithmediavalhome");
	bool bSuccess = ShLevel::Load(idLevel);
	SH_ASSERT(bSuccess);
	ShCamera * g_pCamera	= shNULL;

	// Camera
	g_pCamera = ShCamera::Find(idLevel, CShIdentifier("camera_auto_002"));	//< The camera that goes along the path
	SH_ASSERT(shNULL != g_pCamera);

	//
	ShCamera::SetCurrent2D(g_pCamera);
	ShCamera::SetCurrent3D(g_pCamera);
	ShCamera::SetProjectionPerspective(g_pCamera);

}

/**
 * Called on each frame, before the engine update
 */
void ShEntryPoint::OnPreUpdate(float dt)
{
	SH_UNUSED(dt);
}

/**
 * Called on each frame, after the engine update
 */
void ShEntryPoint::OnPostUpdate(float deltaTimeInMs)
{
	CShIdentifier idLevel("3denvironnementwithmediavalhome");
	ShCamera * g_pCamera	= shNULL;

	// Camera
	g_pCamera = ShCamera::Find(idLevel, CShIdentifier("camera_auto_002"));	//< The camera that goes along the path
	CShVector3 vTarget	= ShCamera::GetTarget(g_pCamera);


	//while(vTarget.m_y > -2200)
	{
		//sleep(1);
		//vTarget.SetXYZ(vTarget.m_x, vTarget.m_y -10, vTarget.m_z);
		//ShCamera::SetTarget(g_pCamera, vTarget);


		CShVector3 vPos		= ShCamera::GetWorldPosition(g_pCamera);

		float fRotAngle		= 0.25f * deltaTimeInMs + ShCamera::GetWorldRotation(g_pCamera).GetZ();
		CShMatrix44 mRot	= CShMatrix44::makeIdentity();
		mRot.setRotation(0.0f, 0.0f, fRotAngle);
		vTarget = vTarget.RotateAround(vPos, mRot);
		ShCamera::SetTarget(g_pCamera, vTarget);
	}

}

/**
 * Called before the engine release
 */
void ShEntryPoint::OnPreRelease(void)
{
	// nothing here
}

/**
 * Called after the engine release
 */
void ShEntryPoint::OnPostRelease(void)
{
	// nothing here
}
