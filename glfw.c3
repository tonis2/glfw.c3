module glfw;

def GLFWwindow = void*;
def GLFWmonitor = void*;
def GLproc = void*;
def KeyCallback = fn void(GLFWwindow window, int key, int scancode, int action, int mods);
def MouseCallback = fn void(GLFWwindow window, int button, int action, int mods);
def ScrollCallback = fn void(GLFWwindow window, int button, int action, int mods);
def MouseEvent = fn void(EventHandler*);
def KeyboardEvent = fn void(EventHandler*, uint key);

fault GlfwErrors {
  FAILED_CREATING_SURFACE,
}

const GLFW_RELEASE = 0;
const GLFW_PRESS = 1;
const GLFW_REPEAT = 2;

const CONTEXT_VERSION_MAJOR = 0x00022002;
const CONTEXT_VERSION_MINOR = 0x00022003;
const CONTEXT_REVISION = 0x00022004;

const CONTEXT_RELEASE_BEHAVIOR = 0x00022009;
const CONTEXT_CREATION_API = 0x0002200B;
const COCOA_RETINA_FRAMEBUFFER = 0x00023001;
const COCOA_FRAME_NAME = 0x00023002;

const COCOA_GRAPHICS_SWITCHING = 0x00023003;
const X11_CLASS_NAME = 0x00024001;
const X11_INSTANCE_NAME = 0x00024002;

const OPENGL_PROFILE = 0x00022008;
const OPENGL_CORE_PROFILE = 0x00032001;
const OPENGL_COMPAT_PROFILE = 0x00032002;
const OPENGL_FORWARD_COMPAT = 0x00022006;

const GLFW_CLIENT_API = 0x00022001;
const GLFW_CONTEXT_VERSION_MAJOR = 0x00022002;
const GLFW_CONTEXT_VERSION_MINOR = 0x00022003;
const GLFW_NO_API = 0;
const GLFW_RESIZABLE = 0x00020003;
const GLFW_TRUE = 1;
const GLFW_FALSE = 0;

extern fn void init() @extern("glfwInit");
extern fn void windowHint(int, int) @extern("glfwWindowHint");
extern fn void pollEvents() @extern("glfwPollEvents");
extern fn void swapBuffers(GLFWwindow window) @extern("glfwSwapBuffers");
extern fn void destroyWindow(GLFWwindow window) @extern("glfwDestroyWindow");
extern fn void makeContextCurrent(GLFWwindow window) @extern("glfwMakeContextCurrent");
extern fn void getFramebufferSize(GLFWwindow window, uint* width, uint* height) @extern("glfwGetFramebufferSize");
extern fn double getTime() @extern("glfwGetTime");
extern fn void terminate() @extern("glfwTerminate");

extern fn GLproc getProcAddress(char*) @extern("glfwGetProcAddress");
extern fn bool windowShouldClose(GLFWwindow window) @extern("glfwWindowShouldClose");
extern fn bool getCursorPos(GLFWwindow window, double* x_pos, double* y_pos) @extern("glfwGetCursorPos");
extern fn void setKeyCallback(GLFWwindow window, KeyCallback callback) @extern("glfwSetKeyCallback");
extern fn void setMouseButtonCallback(GLFWwindow window, MouseCallback callback) @extern("glfwSetMouseButtonCallback");
extern fn void setScrollCallback(GLFWwindow window, MouseCallback callback) @extern("glfwSetScrollCallback");
extern fn GLFWwindow createWindow(int, int, char*, GLFWmonitor, GLFWwindow) @extern("glfwCreateWindow");

extern fn char* getRequiredInstanceExtensions (uint *count) @extern("glfwGetRequiredInstanceExtensions");
