.class Lcom/google/android/gms/tagmanager/zzp$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzp$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzp;->zzau(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbdf:Lcom/google/android/gms/tagmanager/zzp;

.field final synthetic zzbdg:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzp;Z)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzp$3;->zzbdf:Lcom/google/android/gms/tagmanager/zzp;

    iput-boolean p2, p0, Lcom/google/android/gms/tagmanager/zzp$3;->zzbdg:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/tagmanager/Container;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/tagmanager/zzp$3;->zzbdg:Z

    if-eqz v2, :cond_1f

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/Container;->getLastRefreshTime()J

    move-result-wide v2

    const-wide/32 v4, 0x2932e00

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/google/android/gms/tagmanager/zzp$3;->zzbdf:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v4}, Lcom/google/android/gms/tagmanager/zzp;->zzc(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/internal/zznl;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/zznl;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1d

    :cond_1c
    :goto_1c
    return v0

    :cond_1d
    move v0, v1

    goto :goto_1c

    :cond_1f
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/Container;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_1c

    move v0, v1

    goto :goto_1c
.end method
