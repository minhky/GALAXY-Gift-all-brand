.class public Lcom/google/android/gms/location/zzg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/location/GestureRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/location/GestureRequest;Landroid/os/Parcel;I)V
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/location/GestureRequest;->b()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/google/android/gms/location/GestureRequest;->a()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->a(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->a(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/gms/location/GestureRequest;
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->b(Landroid/os/Parcel;)I

    move-result v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_25

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->a(Landroid/os/Parcel;)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/safeparcel/zza;->a(I)I

    move-result v4

    sparse-switch v4, :sswitch_data_4e

    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/zza;->b(Landroid/os/Parcel;I)V

    goto :goto_6

    :sswitch_1b
    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/zza;->n(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_6

    :sswitch_20
    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/zza;->e(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_6

    :cond_25
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-eq v3, v2, :cond_47

    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Overread allowed size end="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_47
    new-instance v2, Lcom/google/android/gms/location/GestureRequest;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/location/GestureRequest;-><init>(ILjava/util/List;)V

    return-object v2

    nop

    :sswitch_data_4e
    .sparse-switch
        0x1 -> :sswitch_1b
        0x3e8 -> :sswitch_20
    .end sparse-switch
.end method

.method public a(I)[Lcom/google/android/gms/location/GestureRequest;
    .registers 3

    new-array v0, p1, [Lcom/google/android/gms/location/GestureRequest;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/zzg;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/GestureRequest;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/zzg;->a(I)[Lcom/google/android/gms/location/GestureRequest;

    move-result-object v0

    return-object v0
.end method
