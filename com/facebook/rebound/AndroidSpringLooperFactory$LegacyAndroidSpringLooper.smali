.class Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;
.super Lcom/facebook/rebound/SpringLooper;
.source "AndroidSpringLooperFactory.java"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLastTime:J

.field private final mLooperRunnable:Ljava/lang/Runnable;

.field private mStarted:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/facebook/rebound/SpringLooper;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mHandler:Landroid/os/Handler;

    .line 58
    new-instance v0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper$1;

    invoke-direct {v0, p0}, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper$1;-><init>(Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;)V

    iput-object v0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mLooperRunnable:Ljava/lang/Runnable;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;)Z
    .registers 2

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mStarted:Z

    return v0
.end method

.method static synthetic access$100(Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;)J
    .registers 3

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mLastTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;J)J
    .registers 4

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mLastTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mLooperRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static create()Lcom/facebook/rebound/SpringLooper;
    .registers 2

    .prologue
    .line 53
    new-instance v0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public start()V
    .registers 3

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mStarted:Z

    if-eqz v0, :cond_5

    .line 81
    :goto_4
    return-void

    .line 77
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mStarted:Z

    .line 78
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mLastTime:J

    .line 79
    iget-object v0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mLooperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 80
    iget-object v0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mLooperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mStarted:Z

    .line 86
    iget-object v0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mLooperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method
