.class Landroid/support/transition/WindowIdPort;
.super Ljava/lang/Object;
.source "WindowIdPort.java"


# instance fields
.field private final a:Landroid/os/IBinder;


# direct methods
.method private constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/support/transition/WindowIdPort;->a:Landroid/os/IBinder;

    .line 36
    return-void
.end method

.method static a(Landroid/view/View;)Landroid/support/transition/WindowIdPort;
    .registers 3

    .prologue
    .line 39
    new-instance v0, Landroid/support/transition/WindowIdPort;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/transition/WindowIdPort;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 44
    instance-of v0, p1, Landroid/support/transition/WindowIdPort;

    if-eqz v0, :cond_12

    check-cast p1, Landroid/support/transition/WindowIdPort;

    iget-object v0, p1, Landroid/support/transition/WindowIdPort;->a:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/support/transition/WindowIdPort;->a:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
