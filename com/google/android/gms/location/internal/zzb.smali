.class public Lcom/google/android/gms/location/internal/zzb;
.super Lcom/google/android/gms/common/internal/zzj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzj",
        "<",
        "Lcom/google/android/gms/location/internal/zzi;",
        ">;"
    }
.end annotation


# instance fields
.field protected final e:Lcom/google/android/gms/location/internal/zzp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/location/internal/zzp",
            "<",
            "Lcom/google/android/gms/location/internal/zzi;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/common/internal/zzf;)V
    .registers 14

    const/16 v3, 0x17

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p6

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    new-instance v0, Lcom/google/android/gms/location/internal/zzb$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/internal/zzb$1;-><init>(Lcom/google/android/gms/location/internal/zzb;)V

    iput-object v0, p0, Lcom/google/android/gms/location/internal/zzb;->e:Lcom/google/android/gms/location/internal/zzp;

    iput-object p5, p0, Lcom/google/android/gms/location/internal/zzb;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/location/internal/zzb;)V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/zzb;->r()V

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/internal/zzb;->b(Landroid/os/IBinder;)Lcom/google/android/gms/location/internal/zzi;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/os/IBinder;)Lcom/google/android/gms/location/internal/zzi;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/location/internal/zzi$zza;->a(Landroid/os/IBinder;)Lcom/google/android/gms/location/internal/zzi;

    move-result-object v0

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object v0
.end method

.method protected j()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object v0
.end method

.method protected q()Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "client_name"

    iget-object v2, p0, Lcom/google/android/gms/location/internal/zzb;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method