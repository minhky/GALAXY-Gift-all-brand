.class Lcom/google/android/gms/internal/zzoe;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mPriority:I

.field private final zzx:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoe;->zzx:Ljava/lang/Runnable;

    iput p2, p0, Lcom/google/android/gms/internal/zzoe;->mPriority:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzoe;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoe;->zzx:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
