.class Lcom/google/android/gms/location/zzi$zza$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/zzi;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/zzi$zza$zza;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .registers 7

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_4
    const-string/jumbo v0, "com.google.android.gms.location.ILocationListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_20

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_14
    iget-object v0, p0, Lcom/google/android/gms/location/zzi$zza$zza;->a:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_25

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_20
    const/4 v0, 0x0

    :try_start_21
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_14

    :catchall_25
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/location/zzi$zza$zza;->a:Landroid/os/IBinder;

    return-object v0
.end method
